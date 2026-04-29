(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b10001110001101000101001)))
;; x should be Float32(0x80471A29 [Rational(-4659753, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 166265545526096389186323317831551666106714477777360589.0 25462949704181076078355571105117227013143354920824203132951755616929766247041708827292467200.0)))))
;; w should be Float32(0x80471A29 [Rational(-4659753, 713623846352979940529142984724747568191373312), -0.000000])

(assert (= x w))
(check-sat)
(exit)
