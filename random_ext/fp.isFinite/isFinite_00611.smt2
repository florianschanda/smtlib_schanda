(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC959F6C8)))
;; x should be Float32(0xC959F6C8 [Rational(-1785561, 2), -892780.500000])

(declare-const result Bool)
(assert (= result (fp.isFinite x)))
(assert result)
(check-sat)
(exit)
