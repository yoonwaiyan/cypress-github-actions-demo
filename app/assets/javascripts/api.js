export default {
  destroy(id) {
    return $.ajax({ url: `api/todos/${id}`, type: 'delete' });
  },

  create(text, uid) {
    return $.post('api/todos', { title: text, uid });
  },

  update(id, data) {
    return $.ajax({ url: `api/todos/${id}`, type: 'put', data });
  },

  fetch(uid) {
    return $.ajax({ url: `api/todos?uid=${uid}` });
  }
};
