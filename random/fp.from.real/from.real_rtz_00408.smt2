(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b11110000001100010010010)))
;; x should be Float32(0x4A781892 [Rational(8129609, 2), 4064804.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 12854721.0 8.0)))))
;; w should be Float32(0xC9C425C1 [Rational(-12854721, 8), -1606840.125000])

(assert (not (distinct x w)))
(check-sat)
(exit)
