(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x80468DF2)))
;; x should be Float32(0x80468DF2 [Rational(-2311929, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b00100001000010101100111)))
;; y should be Float32(0x00108567 [Rational(1082727, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b01110111 #b01001101100100001010010)))
;; z should be Float32(0xBBA6C852 [Rational(-5465129, 1073741824), -0.005090])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (= result ((_ to_fp 8 24) #xBBA6C853)))
(check-sat)
(exit)
