(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x0060958D)))
;; x should be Float32(0x0060958D [Rational(6329741, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x0038FDD3)))
;; y should be Float32(0x0038FDD3 [Rational(3734995, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.div RNA x y)))
(assert (= result (fp #b0 #b01111111 #b10110001110110001010011)))
(check-sat)
(exit)
