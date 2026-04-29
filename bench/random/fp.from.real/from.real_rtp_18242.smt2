(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AF51887)))
;; x should be Float32(0x4AF51887 [Rational(16062599, 2), 8031299.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- 7250102.0))))
;; w should be Float32(0xCADD416C [Rational(-7250102), -7250102.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
