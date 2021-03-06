(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000001 #b00000000000000000000000)))
;; x should be Float32(0x80800000 [Rational(-1, 85070591730234615865843651857942052864), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x830C0BC7)))
;; y should be Float32(0x830C0BC7 [Rational(-9178055, 22300745198530623141535718272648361505980416), -0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xC975CB18)))
;; z should be Float32(0xC975CB18 [Rational(-2013539, 2), -1006769.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (= result ((_ to_fp 8 24) #xC975CB18)))
(check-sat)
(exit)
