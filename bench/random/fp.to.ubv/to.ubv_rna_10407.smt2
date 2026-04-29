(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RNA +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010011 #b11110011010101111010000)))
;; x should be Float32(0x49F9ABD0 [Rational(2045306), 2045306.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RNA x)))
;; y should be 2045306

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000111110011010101111010))
;; z should be 2045306

(assert (not (= y z)))
(check-sat)
(exit)
