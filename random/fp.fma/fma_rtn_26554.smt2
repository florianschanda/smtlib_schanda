(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10100000 #b11111111110011010011110)))
;; x should be Float32(0xD07FE69E [Rational(-17173215232), -17173215232.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xC9B3D524)))
;; y should be Float32(0xC9B3D524 [Rational(-2946377, 2), -1473188.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xCAC23357)))
;; z should be Float32(0xCAC23357 [Rational(-12727127, 2), -6363563.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (= result ((_ to_fp 8 24) #x5AB3C34F)))
(check-sat)
(exit)
