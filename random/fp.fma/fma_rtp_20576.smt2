(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b11111111 #b00100010001000011101000)))
;; x should be Float32(NaN)

(declare-const y Float32)
(assert (= y (fp #b1 #b11111111 #b11101010100101110100010)))
;; y should be Float32(NaN)

(declare-const z Float32)
(assert (= z (fp #b1 #b00000000 #b11010110100111100001101)))
;; z should be Float32(0x806B4F0D [Rational(-7032589, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (= result (_ NaN 8 24)))
(check-sat)
(exit)
