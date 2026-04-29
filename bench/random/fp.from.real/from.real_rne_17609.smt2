(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b00001110 #b01011111100010101010111)))
;; x should be Float32(0x872FC557 [Rational(-11519319, 87112285931760246646623899502532662132736), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 89731383657.0 1742245718635204932932477990050653242654720000.0)))))
;; w should be Float32(0x8688EB52 [Rational(-4486569, 87112285931760246646623899502532662132736), -0.000000])

(assert (distinct x w))
(check-sat)
(exit)
