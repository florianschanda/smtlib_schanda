(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x17BB4DF5)))
;; x should be Float32(0x17BB4DF5 [Rational(12275189, 10141204801825835211973625643008), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 2489704063484931114729934974313191886511.0 2056880696651507552693711478196688131228419832041974829185761280.0))))
;; w should be Float32(0x17BB4DF5 [Rational(12275189, 10141204801825835211973625643008), 0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
