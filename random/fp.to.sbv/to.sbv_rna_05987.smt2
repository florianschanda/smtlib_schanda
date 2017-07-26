(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNA +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010011 #b10101100100101111100100)))
;; x should be Float32(0x49D64BE4 [Rational(3511033, 2), 1755516.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNA x)))
;; y should be 1755517

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000110101100100101111101))
;; z should be 1755517

(assert (not (= y z)))
(check-sat)
(exit)
