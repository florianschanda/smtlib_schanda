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
(assert (= y ((_ to_fp 8 24) #xB18F4FAF)))
;; y should be Float32(0xB18F4FAF [Rational(-9392047, 2251799813685248), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b11001000 #b00110001001111101000000)))
;; z should be Float32(0x64189F40 [Rational(11261521084217567477760), 11261521084217567477760.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (= result (fp #b1 #b11111111 #b00000000000000000000000)))
(check-sat)
(exit)
