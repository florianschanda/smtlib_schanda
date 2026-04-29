(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b11011100100101000100110)))
;; x should be Float32(0x4A6E4A26 [Rational(7808275, 2), 3904137.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 15991347949.0 4096.0))))
;; w should be Float32(0x4A6E4A27 [Rational(15616551, 4), 3904137.750000])

(assert (not (distinct x w)))
(check-sat)
(exit)
