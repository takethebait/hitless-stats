const RunSelector = ({ runs, setSelectedRun, selectedRun }) => {
    return (
      <div className="flex gap-4 mb-6">
        {runs.map((run) => (
          <button
            key={run.id}
            onClick={() => setSelectedRun(run)}
            className={`px-4 py-2 rounded-lg transition 
              ${selectedRun.id === run.id ? "bg-[var(--color-primary)] text-[var(--color-dark)]" : "bg-[var(--color-dark)] text-[var(--color-text-light)] hover:bg-[var(--color-primary-hover)]"}`}
          >
            {run.name}
          </button>
        ))}
      </div>
    );
  };
  
  export default RunSelector;
  