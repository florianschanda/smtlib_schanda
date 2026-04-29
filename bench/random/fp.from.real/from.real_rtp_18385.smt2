(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x11B3FDA7)))
;; x should be Float32(0x11B3FDA7 [Rational(11795879, 41538374868278621028243970633760768), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 6124770532727231992404072774369037098427771.0 21567957333720511835733612069615704538909715538032457984882888199372800.0))))
;; w should be Float32(0x11B3FDA7 [Rational(11795879, 41538374868278621028243970633760768), 0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
