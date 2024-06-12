"""VQE twolocal ansatz benchmark definition."""

from __future__ import annotations

from typing import TYPE_CHECKING

import numpy as np
from qiskit.circuit.library import TwoLocal

if TYPE_CHECKING:  # pragma: no cover
    from qiskit import QuantumCircuit


def create_circuit(num_qubits: int) -> QuantumCircuit:
    """Returns a quantum circuit implementing the TwoLocal ansatz with random parameter values.

    Arguments:
        num_qubits: number of qubits of the returned quantum circuit

    Returns:
        QuantumCircuit: a quantum circuit implementing the TwoLocal ansatz with random parameter values
    """
    rng = np.random.default_rng(10)
    qc = TwoLocal(num_qubits, "ry", "cx", entanglement="full", reps=3)
    num_params = qc.num_parameters
    qc = qc.assign_parameters(2 * np.pi * rng.random(num_params))
    qc.measure_all()
    qc.name = "twolocalrandom"

    return qc
