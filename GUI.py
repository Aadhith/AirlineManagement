import mysql.connector
import streamlit as st
import pandas as pd

db = mysql.connector.connect(
    host="localhost",
    port="3306",
    user="root",
    password="",
    database="airlinemanagement"
)

cursor = db.cursor()

st.title("Flight Details")

cursor.execute("SELECT * FROM flight")
st.dataframe(pd.DataFrame(cursor.fetchall(), columns=("Flight_ID", "Departure", "Arrival", "Flight_date", "A_ID")))

st.subheader("Add a new Flight")
Flight_ID = st.text_input("Flight_ID",key="Flight_ID_create")
Departure = st.text_input("Departure",key="Departure_create")
Arrival = st.text_input("Arrival",key="Arrival_create")
Flight_date = st.text_input("Flight Date",key="Flight_date_create")
A_ID = st.text_input("A_ID",key="A_ID_create")
if st.button("Add Flight"):
    cursor.execute("INSERT INTO flight VALUES (%s, %s, %s, %s, %s)", (Flight_ID, Departure, Arrival, Flight_date, A_ID))
    db.commit()
    st.success("Flight added successfully")
st.subheader("Update a Flight")
Flight_ID = st.text_input("Flight_ID",key="Flight_ID_update")
Departure = st.text_input("Departure",key="Departure_update")
Arrival = st.text_input("Arrival",key="Arrival_update")
Flight_date = st.text_input("Flight Date",key="Flight_date_update")
A_ID = st.text_input("A_ID",key="A_ID_update")
if st.button("Update Flight"):
    cursor.execute("UPDATE Flight SET Flight_ID = %s, Departure = %s, Arrival = %s, Flight_date = %s, A_ID = %s WHERE Flight_ID = %s", (Flight_ID, Departure, Arrival, Flight_date, A_ID))
    db.commit()
    st.success("Flight updated successfully")
st.subheader("Delete a Flight")
Flight_no = st.text_input("Flight_ID",key="Flight_ID_delete")
if st.button("Delete Flight"):
    cursor.execute("DELETE FROM Flight WHERE Flight_ID = %s", (Flight_no,))
    db.commit()
    st.success("Flight deleted successfully")

cursor.close()
db.close()