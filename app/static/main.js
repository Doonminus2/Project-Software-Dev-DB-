document.addEventListener("DOMContentLoaded", () => {
  fetch("/tasks")
    .then((res) => res.json())
    .then((data) => {
      const list = document.getElementById("task-list");
      data.forEach((task) => {
        const li = document.createElement("li");
        li.textContent = `${task.title} - ${
          task.is_done ? "✅ Done" : "❌ Not yet"
        }`;
        list.appendChild(li);
      });
    })
    .catch((err) => console.error("Fetch error:", err));
});
