(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b11110100 #b10000000001011101000111)))
;; x should be Float32(0xFA401747 [Rational(-249348279364777351466393805902577664), -249348279364777351466393805902577664.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- 75076441899848190654133781127331455.0))))
;; w should be Float32(0xF96758DE [Rational(-75076438438671543491924861057499136), -75076438438671543491924861057499136.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
