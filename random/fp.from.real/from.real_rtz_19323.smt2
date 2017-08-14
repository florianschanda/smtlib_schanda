(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b00001011 #b00101001001110010111010)))
;; x should be Float32(0x05949CBA [Rational(4869725, 348449143727040986586495598010130648530944), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 10605322451544785707669102324580956936948916023227.0 758855036025675418327914807352937072907190171504742000488989222554259486408284569600.0))))
;; w should be Float32(0x05949CBA [Rational(4869725, 348449143727040986586495598010130648530944), 0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
