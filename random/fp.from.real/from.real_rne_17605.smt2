(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b00001110 #b01011111100010101010111)))
;; x should be Float32(0x872FC557 [Rational(-11519319, 87112285931760246646623899502532662132736), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 20069484787410453754593264740531575531043460745367.0 151771007205135083665582961470587414581438034300948400097797844510851897281656913920.0)))))
;; w should be Float32(0x872FC557 [Rational(-11519319, 87112285931760246646623899502532662132736), -0.000000])

(assert (= x w))
(check-sat)
(exit)
