(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b01001001111100011101000)))
;; x should be Float32(0x0024F8E8 [Rational(302877, 89202980794122492566142873090593446023921664), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 86456092583019532019464043356718139214402689222521903.0 25462949704181076078355571105117227013143354920824203132951755616929766247041708827292467200.0))))
;; w should be Float32(0x0024F8E8 [Rational(302877, 89202980794122492566142873090593446023921664), 0.000000])

(assert (= x w))
(check-sat)
(exit)
