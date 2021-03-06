(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b01111000111011101011011)))
;; x should be Float32(0x003C775B [Rational(3962715, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xC8E123B0)))
;; y should be Float32(0xC8E123B0 [Rational(-922171, 2), -461085.500000])

(declare-const result Float32)
(assert (= result (fp.min x y)))
(assert (not (= result ((_ to_fp 8 24) #xC8E123B0))))
(check-sat)
(exit)
