(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x8014A895)))
;; x should be Float32(0x8014A895 [Rational(-1353877, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 9661586938229311179907130965780789276102658776651377.0 5092589940836215215671114221023445402628670984164840626590351123385953249408341765458493440.0)))))
;; w should be Float32(0x8014A895 [Rational(-1353877, 713623846352979940529142984724747568191373312), -0.000000])

(assert (= x w))
(check-sat)
(exit)
