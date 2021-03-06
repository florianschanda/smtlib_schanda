(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b11111111111111111111111)))
;; x should be Float32(0x807FFFFF [Rational(-8388607, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010100 #b01100100000011011100110)))
;; y should be Float32(0x4A3206E6 [Rational(5833587, 2), 2916793.500000])

(declare-const result Float32)
(assert (= result (fp.add RTP x y)))
(assert (not (= result ((_ to_fp 8 24) #x4A3206E6))))
(check-sat)
(exit)
