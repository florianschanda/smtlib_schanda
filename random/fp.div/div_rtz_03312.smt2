(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x49B80BDC)))
;; x should be Float32(0x49B80BDC [Rational(3015415, 2), 1507707.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xCAB3C1DD)))
;; y should be Float32(0xCAB3C1DD [Rational(-11780573, 2), -5890286.500000])

(declare-const result Float32)
(assert (= result (fp.div RTZ x y)))
(assert (not (= result (fp #b1 #b01111101 #b00000110000110111011001))))
(check-sat)
(exit)
