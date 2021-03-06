(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b11111111 #b00000000000000000000000)))
;; x should be Float32(+oo)

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xCA5F0372)))
;; y should be Float32(0xCA5F0372 [Rational(-7307705, 2), -3653852.500000])

(declare-const z Float32)
(assert (= z (fp #b1 #b00000000 #b10110001011100110111110)))
;; z should be Float32(0x8058B9BE [Rational(-2907359, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (= result (_ -oo 8 24)))
(check-sat)
(exit)
