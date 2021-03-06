(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AFC9DCD)))
;; x should be Float32(0x4AFC9DCD [Rational(16555469, 2), 8277734.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x801C69FF)))
;; y should be Float32(0x801C69FF [Rational(-1862143, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b00000000 #b01110011000101000000010)))
;; z should be Float32(0x00398A02 [Rational(1885441, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (= result ((_ to_fp 8 24) #x8AE04ED3)))
(check-sat)
(exit)
