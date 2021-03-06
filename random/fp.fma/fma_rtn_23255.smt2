(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10011000 #b01000100001001011001011)))
;; x should be Float32(0x4C2212CB [Rational(42486572), 42486572.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x2745FA68)))
;; y should be Float32(0x2745FA68 [Rational(1621837, 590295810358705651712), 0.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b00000000 #b10100101111011010110110)))
;; z should be Float32(0x8052F6B6 [Rational(-2718555, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (= result ((_ to_fp 8 24) #x33FAADFC)))
(check-sat)
(exit)
