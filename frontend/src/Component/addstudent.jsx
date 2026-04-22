import React, {  useEffect, useState } from 'react'
import instance from '../api/axios';
import { useNavigate , useParams} from 'react-router-dom';

const EditStudent = () => {
    const navigate = useNavigate();
    const { id } = useParams();
    const [form, setForm] = useState({
        fname: '',
        lname: '',
        email: '',
        age: '',
        department: '',
    });

    const handleChange = (e) => {
      setForm({
        ...form,
        [e.target.name]: e.target.value,
      })
    }

    const handleSubmit = async (e) => {
        e.preventDefault();
        await instance.put(`/api/student/${id}`, form);
        navigate('/');
        setForm({
            fname: '',
            lname: '',
            email: '',
            age: '',
            department: '',
        });
    }

    useEffect(()=>{
        const fetchStudent = async () =>{
            const res = await instance.get(`/api/student/${id}`);
            setForm(res.data[0]);
        }
        fetchStudent();
    },[id])
  return (
   <div
   className=' flex justify-center items-center  w-full  flex-col   '
   >
    <h1 className=' text-2xl font-bold mb-4'> update  STUDENT </h1>
     <form 
    className=' w-3/4 '
    onSubmit={handleSubmit}>
        {['fname', 'lname', 'email', 'age', 'department'].map((field)=>(
           <label htmlFor={field}>
            {field}:
            <input
            key={field}
            name={field}
            placeholder={field}
            onChange={handleChange}
            value={form[field]}
            className=' block  mb-2  p-2 border rounded w-full'
            type="text" />
            
           </label>
        ))} 
        <button
        className=' bg-green-500 text-white px-4 rounded '
        type='submit'> update  student</button>
    </form>
   </div>
  )
}

export default EditStudent;