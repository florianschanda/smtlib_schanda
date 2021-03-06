(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00000001)))
;; x should be Float32(0x00000001 [Rational(1, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b11111111 #b00101111110001010010110)))
;; y should be Float32(NaN)

(declare-const z Float32)
(assert (= z (fp #b1 #b11010010 #b01001111100001111000100)))
;; z should be Float32(0xE927C3C4 [Rational(-12675943056352568754044928), -12675943056352568754044928.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (= result (_ NaN 8 24)))
(check-sat)
(exit)
