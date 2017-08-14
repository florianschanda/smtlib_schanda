(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b00101000 #b00011101101101000110010)))
;; x should be Float32(0x140EDA32 [Rational(4680985, 649037107316853453566312041152512), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 151906652476689583673261590988402542102957.0 21062458333711437339583605536734086463779019080109822250862195507200.0))))
;; w should be Float32(0x140EDA32 [Rational(4680985, 649037107316853453566312041152512), 0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
