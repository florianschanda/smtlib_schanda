(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b00100111011101101101110)))
;; x should be Float32(0x8013BB6E [Rational(-646583, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 6465838547.0 3568119231764899702645714923623737840956866560000.0)))))
;; w should be Float32(0x8013BB70 [Rational(-80823, 44601490397061246283071436545296723011960832), -0.000000])

(assert (distinct x w))
(check-sat)
(exit)
