(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b11111111111111111111111)))
;; x should be Float32(0x807FFFFF [Rational(-8388607, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xCA39F59E)))
;; y should be Float32(0xCA39F59E [Rational(-6093519, 2), -3046759.500000])

(declare-const result Float32)
(assert (= result (fp.sub RTP x y)))
(assert (= result (fp #b0 #b10010100 #b01110011111010110011110)))
(check-sat)
(exit)
