(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTZ +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10001100 #b11111101110111100110011)))
;; x should be Float32(0x467EEF33 [Rational(16707379, 1024), 16315.799805])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTZ x)))
;; y should be 16315

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000000000011111110111011))
;; z should be 16315

(assert (not (= y z)))
(check-sat)
(exit)
