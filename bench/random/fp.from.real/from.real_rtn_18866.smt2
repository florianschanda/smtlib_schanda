(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b00110001 #b00110100110011101011001)))
;; x should be Float32(0x189A6759 [Rational(10119001, 2535301200456458802993406410752), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 22003002773.0 25353012004564588029934064107520000.0))))
;; w should be Float32(0x17864BB1 [Rational(8801201, 10141204801825835211973625643008), 0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
