(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00226F5F)))
;; x should be Float32(0x00226F5F [Rational(2256735, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 2820919757.0 892029807941224925661428730905934460239216640000.0))))
;; w should be Float32(0x00226F60 [Rational(70523, 22300745198530623141535718272648361505980416), 0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
