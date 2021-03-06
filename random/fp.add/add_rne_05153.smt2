(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00110001 #b00101001111111100011000)))
;; x should be Float32(0x9894FF18 [Rational(-1220579, 316912650057057350374175801344), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x80464781)))
;; y should be Float32(0x80464781 [Rational(-4605825, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const result Float32)
(assert (= result (fp.add RNE x y)))
(assert (not (= result (fp #b1 #b00110001 #b00101001111111100011000))))
(check-sat)
(exit)
