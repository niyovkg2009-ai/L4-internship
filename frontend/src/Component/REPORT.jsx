import { useState, useEffect } from 'react';
import { Link } from "react-router-dom";
import instance from '../api/axios';

function Report() {
  const [users, setUsers] = useState([]);

  const fetchUsers = async () => {
    try {
      const response = await instance.get('api/users');
      setUsers(response.data);
    } catch (error) {
      console.error('Error fetching users:', error);
    }
  };

  const deletee=async (id)=>{
    try{
      await instance.delete(`api/delete/${id}`);
     deletee();
    }
    catch(error){
      console.error('error deleting user',error);
    }
  };

  useEffect(() => {
    fetchUsers();
  }, []);

  return (
    <div>
      <h1 className='underline'>Report of all registered users</h1>
      <div>
        <table className='w-full border border-gray-500 text-center'>
          <thead className='bg-blue-500 font-bold'>
            <tr>
              <th className='border p-2'>ID</th>
              <th className='border p-2'>FIRSTNAME</th>
              <th className='border p-2'>LASTNAME</th>
              <th className='border p-2'>AGE</th>
              <th className='border p-2'>LOCATION</th>
              <th className='border p-2'>ACTION</th>
            </tr>
          </thead>
          <tbody className="font-bold">
            {users.map((user) => (
              <tr key={user.id}>
                <td className='border p-2'>{user.id}</td>
                <td className='border p-2'>{user.fname}</td>
                <td className='border p-2'>{user.lname}</td>
                <td className='border p-2'>{user.age}</td>
                <td className='border p-2'>{user.location}</td>
                <td className='border p-2'>
                  <Link to={`/edit/${users.id}`} className="text-blue-600">Edit</Link>
                  <Link to={`/delete/${users.id}`} className="text-blue-600">delete</Link>
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
}

export default Report;