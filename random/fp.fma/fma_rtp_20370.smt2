(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b11111111 #b00000101000111111101000)))
;; x should be Float32(NaN)

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x0039DECB)))
;; y should be Float32(0x0039DECB [Rational(3792587, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x4AC11ECD)))
;; z should be Float32(0x4AC11ECD [Rational(12656333, 2), 6328166.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (= result ((_ to_fp 8 24) #xFFFFFFFF)))
(check-sat)
(exit)
