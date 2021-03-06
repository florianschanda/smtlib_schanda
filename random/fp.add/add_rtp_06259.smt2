(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAF5B913)))
;; x should be Float32(0xCAF5B913 [Rational(-16103699, 2), -8051849.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x7F8D9144)))
;; y should be Float32(NaN)

(declare-const result Float32)
(assert (= result (fp.add RTP x y)))
(assert (not (= result ((_ to_fp 8 24) #xFFFFFFFF))))
(check-sat)
(exit)
