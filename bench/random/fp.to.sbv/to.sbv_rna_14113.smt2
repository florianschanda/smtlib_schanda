(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNA +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x49F623A4)))
;; x should be Float32(0x49F623A4 [Rational(4032745, 2), 2016372.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNA x)))
;; y should be 2016373

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000111101100010001110101))
;; z should be 2016373

(assert (not (= y z)))
(check-sat)
(exit)
