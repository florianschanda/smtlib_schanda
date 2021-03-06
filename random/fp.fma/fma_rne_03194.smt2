(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x002FCE1E)))
;; x should be Float32(0x002FCE1E [Rational(1566479, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00000111 #b00110111001100000101111)))
;; y should be Float32(0x839B982F [Rational(-10197039, 11150372599265311570767859136324180752990208), -0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x4AAF52DF)))
;; z should be Float32(0x4AAF52DF [Rational(11490015, 2), 5745007.500000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (not (= result ((_ to_fp 8 24) #x4AAF52DF))))
(check-sat)
(exit)
