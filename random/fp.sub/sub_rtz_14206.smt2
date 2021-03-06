(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC6348D75)))
;; x should be Float32(0xC6348D75 [Rational(-11832693, 1024), -11555.364258])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xFFC096D8)))
;; y should be Float32(NaN)

(declare-const result Float32)
(assert (= result (fp.sub RTZ x y)))
(assert (not (= result ((_ to_fp 8 24) #xFFFFFFFF))))
(check-sat)
(exit)
