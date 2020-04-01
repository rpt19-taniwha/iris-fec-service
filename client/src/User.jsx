import React, { useLayoutEffect, useState } from 'react';
import PropTypes from 'prop-types';
import axios from 'axios';

const User = (props) => {
  const [users, setUsers] = useState([]);

  // const getUser = (userId) => {
  //   axios.get(`/users/${userId}`).then((result) => {
  //     console.log(result.data)
  //     setUsers(result.data)
  //   });
  // };

  useLayoutEffect(() => {
    function effectFunction() {
      async function getUser(userId) {
        const response = await fetch(`/users/${userId}`);
        const json = await response.json();
        setUsers(json);
      }
      getUser(props.userId);
    }

    effectFunction();
  }, []);

  return (
    // want to use val.avatar but lorem picsum caches images
    <div>
      {users.map((val) => (
        <div key={val.id}>
          <img alt={val.username} src={`https://i.picsum.photos/id/${Math.floor((Math.random() * 100) + 1)}/75/75.jpg`} />
          <div key={val.id}>{val.username}</div>
        </div>
      ))}
    </div>
  );
};

export default User;

User.propTypes = {
  userId: PropTypes.number.isRequired,
};
