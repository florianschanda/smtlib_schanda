(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RNA +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x49F9ABD0)))
;; x should be Float32(0x49F9ABD0 [Rational(2045306), 2045306.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RNA x)))
;; y should be 2045306

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000111110011010101111010))
;; z should be 2045306

(assert (not (= y z)))
(check-sat)
(exit)
