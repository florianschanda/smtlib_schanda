(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x002C744A)))
;; x should be Float32(0x002C744A [Rational(1456677, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00000001 #b00000000000000000000000)))
;; y should be Float32(0x80800000 [Rational(-1, 85070591730234615865843651857942052864), -0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xA1FDC2E8)))
;; z should be Float32(0xA1FDC2E8 [Rational(-2078813, 1208925819614629174706176), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (= result (fp #b1 #b01000011 #b11111011100001011101000)))
(check-sat)
(exit)
