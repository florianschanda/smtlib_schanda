(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCABEB5E3)))
;; x should be Float32(0xCABEB5E3 [Rational(-12498403, 2), -6249201.500000])

(declare-const result Bool)
(assert (= result (fp.isFinite x)))
(assert (not result))
(check-sat)
(exit)
