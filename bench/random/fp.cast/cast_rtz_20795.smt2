(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTZ conversion of Float32(+halfpoint) -> Float16
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b01111100010110100001010)))
;; x should be Float32(0x4A3E2D0A [Rational(6231685, 2), 3115842.500000])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RTZ x)))
;; y should be Float16(0x7BFF [Rational(65504), 65504.000000])

(declare-const z Float16)
(assert (= z ((_ to_fp 5 11) #x7BFF)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
