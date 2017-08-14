(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNA +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x49F623A0)))
;; x should be Float32(0x49F623A0 [Rational(2016372), 2016372.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNA x)))
;; y should be 2016372

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000111101100010001110100))
;; z should be 2016372

(assert (not (= y z)))
(check-sat)
(exit)
