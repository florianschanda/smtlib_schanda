(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAA8E319)))
;; x should be Float32(0xCAA8E319 [Rational(-11068185, 2), -5534092.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x801C54C2)))
;; y should be Float32(0x801C54C2 [Rational(-928353, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b10010101 #b10100000010111111001011)))
;; z should be Float32(0xCAD02FCB [Rational(-13643723, 2), -6821861.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (= result ((_ to_fp 8 24) #xCAD02FCB)))
(check-sat)
(exit)
