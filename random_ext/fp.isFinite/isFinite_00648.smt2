(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x806EB8F3)))
;; x should be Float32(0x806EB8F3 [Rational(-7256307, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const result Bool)
(assert (= result (fp.isFinite x)))
(assert result)
(check-sat)
(exit)
