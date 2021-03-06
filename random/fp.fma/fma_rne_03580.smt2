(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (_ -zero 8 24)))
;; x should be Float32(-zero)

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b01110110000010100110010)))
;; y should be Float32(0x803B0532 [Rational(-1933977, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b11010000 #b10010110100101010101000)))
;; z should be Float32(0x684B4AA8 [Rational(3840070243039163428372480), 3840070243039163428372480.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (= result ((_ to_fp 8 24) #x684B4AA8)))
(check-sat)
(exit)
