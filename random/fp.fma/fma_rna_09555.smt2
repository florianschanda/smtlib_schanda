(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x19193069)))
;; x should be Float32(0x19193069 [Rational(10039401, 1267650600228229401496703205376), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b11100001001011101110010)))
;; y should be Float32(0x00709772 [Rational(3689401, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b10101010 #b10111100010111011101010)))
;; z should be Float32(0xD55E2EEA [Rational(-15268317233152), -15268317233152.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (not (= result ((_ to_fp 8 24) #xD55E2EEA))))
(check-sat)
(exit)
