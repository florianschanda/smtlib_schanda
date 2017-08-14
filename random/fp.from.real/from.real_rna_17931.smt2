(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b11100000000111011011000)))
;; x should be Float32(0x00700ED8 [Rational(917979, 89202980794122492566142873090593446023921664), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 262036687994319752593026062714741425940921991657999409.0 25462949704181076078355571105117227013143354920824203132951755616929766247041708827292467200.0))))
;; w should be Float32(0x00700ED8 [Rational(917979, 89202980794122492566142873090593446023921664), 0.000000])

(assert (= x w))
(check-sat)
(exit)
