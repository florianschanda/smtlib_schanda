(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xAC199B34)))
;; x should be Float32(0xAC199B34 [Rational(-2516685, 1152921504606846976), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b10010101 #b00010000010111101111001)))
;; y should be Float32(0xCA882F79 [Rational(-8925049, 2), -4462524.500000])

(declare-const z Float32)
(assert (= z (_ -zero 8 24)))
;; z should be Float32(-zero)

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (= result ((_ to_fp 8 24) #x37236DE0)))
(check-sat)
(exit)
