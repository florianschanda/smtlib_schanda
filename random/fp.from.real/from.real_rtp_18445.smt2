(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b11100100011011101000010)))
;; x should be Float32(0x00723742 [Rational(3742625, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 6677065839619964044533379365713847031526302063007711.0 636573742604526901958889277627930675328583873020605078323793890423244156176042720682311680.0))))
;; w should be Float32(0x00723742 [Rational(3742625, 356811923176489970264571492362373784095686656), 0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
